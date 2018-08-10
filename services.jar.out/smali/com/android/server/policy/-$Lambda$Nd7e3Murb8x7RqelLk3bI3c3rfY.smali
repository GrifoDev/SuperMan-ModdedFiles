.class final synthetic Lcom/android/server/policy/-$Lambda$Nd7e3Murb8x7RqelLk3bI3c3rfY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/InputEventReceiver$Factory;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$Lambda$Nd7e3Murb8x7RqelLk3bI3c3rfY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$-com_android_server_policy_PhoneWindowManager_246653(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$Lambda$Nd7e3Murb8x7RqelLk3bI3c3rfY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/-$Lambda$Nd7e3Murb8x7RqelLk3bI3c3rfY;->$m$0(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v0

    return-object v0
.end method
