.class Lcom/android/server/fingerprint/FingerUnlockEffect$1;
.super Ljava/lang/Object;
.source "FingerUnlockEffect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerUnlockEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-server-fingerprint-FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUSSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$fingerprint$FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS:[I

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;


# direct methods
.method private static synthetic -getcom-android-server-fingerprint-FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUSSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->-com-android-server-fingerprint-FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUSSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->-com-android-server-fingerprint-FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUSSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->values()[Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->FAIL:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->UNLOCK:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->-com-android-server-fingerprint-FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUSSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->-getcom-android-server-fingerprint-FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUSSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get1(Lcom/android/server/fingerprint/FingerUnlockEffect;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get0(Lcom/android/server/fingerprint/FingerUnlockEffect;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationEnd called : STATS = INTRO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-set0(Lcom/android/server/fingerprint/FingerUnlockEffect;Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get0(Lcom/android/server/fingerprint/FingerUnlockEffect;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationEnd called : STATS = FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-set0(Lcom/android/server/fingerprint/FingerUnlockEffect;Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->clearAnimation()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setAlpha(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get0(Lcom/android/server/fingerprint/FingerUnlockEffect;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationEnd called : STATS = UNLOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-set0(Lcom/android/server/fingerprint/FingerUnlockEffect;Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->clearAnimation()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerUnlockEffect;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get0(Lcom/android/server/fingerprint/FingerUnlockEffect;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationStart called : STATUS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$1;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get1(Lcom/android/server/fingerprint/FingerUnlockEffect;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
