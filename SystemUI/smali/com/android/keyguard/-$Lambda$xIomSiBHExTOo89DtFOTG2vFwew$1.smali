.class final synthetic Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardSimPinView$2;

    iget v1, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f0:I

    iget v2, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f1:I

    iget v3, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPinView$2;->lambda$-com_android_keyguard_KeyguardSimPinView$2_15278(III)V

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f0:I

    iput p2, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f1:I

    iput p3, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f2:I

    iput-object p4, p0, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/-$Lambda$xIomSiBHExTOo89DtFOTG2vFwew$1;->$m$0()V

    return-void
.end method
