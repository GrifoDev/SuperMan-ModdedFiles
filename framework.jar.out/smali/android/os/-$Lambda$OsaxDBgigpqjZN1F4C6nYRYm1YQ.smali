.class final synthetic Landroid/os/-$Lambda$OsaxDBgigpqjZN1F4C6nYRYm1YQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/os/-$Lambda$OsaxDBgigpqjZN1F4C6nYRYm1YQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/-$Lambda$OsaxDBgigpqjZN1F4C6nYRYm1YQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->lambda$-android_os_PowerManager$WakeLock_81631(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$Lambda$OsaxDBgigpqjZN1F4C6nYRYm1YQ;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/os/-$Lambda$OsaxDBgigpqjZN1F4C6nYRYm1YQ;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/os/-$Lambda$OsaxDBgigpqjZN1F4C6nYRYm1YQ;->$m$0()V

    return-void
.end method
