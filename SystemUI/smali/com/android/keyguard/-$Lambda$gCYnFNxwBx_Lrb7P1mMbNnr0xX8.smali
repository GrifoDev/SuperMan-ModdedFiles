.class final synthetic Lcom/android/keyguard/-$Lambda$gCYnFNxwBx_Lrb7P1mMbNnr0xX8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$gCYnFNxwBx_Lrb7P1mMbNnr0xX8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->lambda$-com_android_keyguard_KeyguardSecurityContainer_10570(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$Lambda$gCYnFNxwBx_Lrb7P1mMbNnr0xX8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/-$Lambda$gCYnFNxwBx_Lrb7P1mMbNnr0xX8;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
