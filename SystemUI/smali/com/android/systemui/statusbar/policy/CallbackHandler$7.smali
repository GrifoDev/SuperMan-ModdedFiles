.class Lcom/android/systemui/statusbar/policy/CallbackHandler$7;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$gigaIcon:I

.field final synthetic val$typeIcon:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$visible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$typeIcon:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$gigaIcon:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$activityIcon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$visible:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$typeIcon:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$gigaIcon:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$7;->val$activityIcon:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMPTCPIndicators(ZIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
