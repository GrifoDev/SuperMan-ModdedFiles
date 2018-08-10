.class public Lcom/android/systemui/doze/DozeMachine;
.super Ljava/lang/Object;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeMachine$Part;,
        Lcom/android/systemui/doze/DozeMachine$Service;,
        Lcom/android/systemui/doze/DozeMachine$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

.field static final DEBUG:Z


# instance fields
.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

.field private mPulseReason:I

.field private final mQueuedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/doze/DozeMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/systemui/doze/DozeMachine$State;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeldForCurrentState:Z


# direct methods
.method private static synthetic -getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/doze/DozeMachine;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->values()[Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/systemui/doze/DozeMachine;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method

.method private isExecutingTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private performTransitionOnComponents(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Part;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v1}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v2, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DozeMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request: current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v2}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-direct {p0, v2, p2}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v2}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    :cond_2
    return-void
.end method

.method private resolveIntermediateState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/doze/DozeMachine;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_1
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transitionPolicy(Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "DozeMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropping pulse done because current state is already done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    :cond_3
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine$State;->canPulse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "DozeMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropping pulse request because current state can\'t pulse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0

    :cond_4
    return-object p1
.end method

.method private transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->transitionPolicy(Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-boolean v2, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DozeMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transition: old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->validateTransition(Lcom/android/systemui/doze/DozeMachine$State;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/systemui/doze/DozeMachine;->updatePulseReason(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;I)V

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/doze/DozeMachine;->performTransitionOnComponents(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->updateScreenState(Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->updateWakeLockState(Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->resolveIntermediateState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void
.end method

.method private updatePulseReason(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_1

    iput p3, p0, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    goto :goto_0
.end method

.method private updateScreenState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->screenState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v1, v0}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    :cond_0
    return-void
.end method

.method private updateWakeLockState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->staysAwake()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    if-eqz v1, :cond_1

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    goto :goto_0
.end method

.method private validateTransition(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v3, :cond_0

    move v3, v1

    :goto_2
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_2

    :pswitch_3
    :try_start_1
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v3, :cond_1

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_3

    :pswitch_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "can\'t transition to UNINITIALIZED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v3, v4, :cond_2

    :goto_4
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_4

    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v3, v4, :cond_3

    :goto_5
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_5

    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v3, v4, :cond_5

    :cond_4
    :goto_6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v1, " state="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v1, " wakeLockHeldForCurrentState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "Parts:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Part;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPulseReason()I
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "must be in pulsing state, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method

.method public requestPulse(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    return-void
.end method

.method public requestState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
