.class final synthetic Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->lambda$-com_android_keyguard_KeyguardCarrierPasswordView_7603(ZI)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw$1;->$m$0(ZI)V

    return-void
.end method
