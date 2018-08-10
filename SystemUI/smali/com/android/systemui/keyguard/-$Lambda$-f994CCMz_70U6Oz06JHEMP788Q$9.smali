.class final synthetic Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$9;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$9;->-$f0:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$-com_android_systemui_keyguard_KeyguardViewMediator_110068(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$9;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$9;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$9;->$m$0()V

    return-void
.end method
