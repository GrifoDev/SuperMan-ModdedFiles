.class Lcom/android/systemui/statusbar/policy/CallbackHandler$3;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$enabled:Z

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityIn:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityOut:Z

    iput p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityIcon:I

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$enabled:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityIn:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityOut:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$activityIcon:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$3;->val$description:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
