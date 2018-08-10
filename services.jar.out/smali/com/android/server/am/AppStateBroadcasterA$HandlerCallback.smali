.class Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;
.super Ljava/lang/Object;
.source "AppStateBroadcasterA.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppStateBroadcasterA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerCallback"
.end annotation


# static fields
.field static final DATA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final DATA_PID:Ljava/lang/String; = "pid"

.field static final DATA_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field static final MSG_DISABLE_BROADCAST:I = 0x2

.field static final MSG_ENABLE_BROADCAST:I = 0x1

.field static final MSG_SEND_APP_EXIT:I = 0x6

.field static final MSG_SEND_APP_FOCUS_GAIN:I = 0x4

.field static final MSG_SEND_APP_START:I = 0x3

.field static final MSG_SET_APP_STOP_REASON:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppStateBroadcasterA$HandlerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v10

    :pswitch_1
    invoke-static {v9}, Lcom/android/server/am/AppStateBroadcasterA;->-set1(Ljava/lang/String;)Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get0()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/am/ActivityManagerService;->getRunningPackages(Ljava/util/Map;)V

    invoke-static {v10}, Lcom/android/server/am/AppStateBroadcasterA;->-set0(Z)Z

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get1()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap7(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/am/AppStateBroadcasterA;->-set0(Z)Z

    invoke-static {v9}, Lcom/android/server/am/AppStateBroadcasterA;->-set1(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get2()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v8, "package_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "pid"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap5(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v8, "package_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get3()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get3()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get3()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "FOCUS_LOSS"

    invoke-static {v8, v9}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v8, "FOCUS_GAIN"

    invoke-static {v2, v8}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap2(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/AppStateBroadcasterA;->-set1(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v8, "package_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "pid"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v8, "stop_reason"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2, v4, v6}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap6(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v8, "package_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "stop_reason"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2}, Lcom/android/server/am/AppStateBroadcasterA;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/AppStateBroadcasterA;->-get2()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppStateBroadcasterA$ApplicationState;->addStopReason(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
