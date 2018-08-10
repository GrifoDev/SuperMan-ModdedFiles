.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;
.super Lcom/android/internal/util/State;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingState"
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-contextaware-utilbundle-CaTelephonyManager$MsgSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$samsung$android$contextaware$utilbundle$CaTelephonyManager$Msg:[I

.field final synthetic this$1:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;


# direct methods
.method private static synthetic -getcom-samsung-android-contextaware-utilbundle-CaTelephonyManager$MsgSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->-com-samsung-android-contextaware-utilbundle-CaTelephonyManager$MsgSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->-com-samsung-android-contextaware-utilbundle-CaTelephonyManager$MsgSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->-com-samsung-android-contextaware-utilbundle-CaTelephonyManager$MsgSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->this$1:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Entering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Handling message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->-getcom-samsung-android-contextaware-utilbundle-CaTelephonyManager$MsgSwitchesValues()[I

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->this$1:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->this$1:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->this$1:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;->this$1:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
