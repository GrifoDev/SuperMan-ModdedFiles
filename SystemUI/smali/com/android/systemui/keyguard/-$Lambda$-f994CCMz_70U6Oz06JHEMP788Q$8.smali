.class final synthetic Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$-com_android_systemui_keyguard_KeyguardViewMediator_149731(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$8;->$m$0()Z

    move-result v0

    return v0
.end method
