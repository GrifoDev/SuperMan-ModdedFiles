.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;
.super Lcom/android/internal/util/State;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LFWaitLocState"
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-contextaware-aggregator-lpp-LppFusion$StateMsgSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$samsung$android$contextaware$aggregator$lpp$LppFusion$StateMsg:[I

.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;


# direct methods
.method private static synthetic -getcom-samsung-android-contextaware-aggregator-lpp-LppFusion$StateMsgSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->-com-samsung-android-contextaware-aggregator-lpp-LppFusion$StateMsgSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->-com-samsung-android-contextaware-aggregator-lpp-LppFusion$StateMsgSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->-com-samsung-android-contextaware-aggregator-lpp-LppFusion$StateMsgSwitchesValues:[I

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

.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string/jumbo v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .locals 3

    const-string/jumbo v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v4, 0x0

    const-string/jumbo v5, "LppFusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handling message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v8, p1, Landroid/os/Message;->what:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->-getcom-samsung-android-contextaware-aggregator-lpp-LppFusion$StateMsgSwitchesValues()[I

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v7, p1, Landroid/os/Message;->what:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v5, "LppFusion"

    const-string/jumbo v6, "Msg not handled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v5

    const/4 v6, 0x6

    const-string/jumbo v7, "LocManListener\t Location is delivered to Algo"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string/jumbo v5, "LppFusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loc list size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/location/Location;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/Location;

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v6

    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    :goto_1
    const/4 v4, 0x1

    return v4

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string/jumbo v5, "LppFusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "batch loc list size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/location/Location;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/location/Location;

    array-length v5, v2

    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v6

    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-interface {v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->onLocationChanged(Landroid/location/Location;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get8(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->stop()V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->stop()V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->stop()V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v4, v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get9(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->exit()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
