.class final synthetic Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/ConfirmLockPattern;

    iget-object v1, p0, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$-com_android_settings_ConfirmLockPattern$ConfirmLockPatternFragment_27640(Lcom/android/settings/ConfirmLockPattern;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;->$m$0()V

    return-void
.end method
