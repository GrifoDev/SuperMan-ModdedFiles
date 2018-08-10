.class final synthetic Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f3:Ljava/lang/Object;

    check-cast v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f0:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$-com_android_systemui_keyguard_KeyguardViewMediator_112862(Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$11;->$m$0()V

    return-void
.end method
