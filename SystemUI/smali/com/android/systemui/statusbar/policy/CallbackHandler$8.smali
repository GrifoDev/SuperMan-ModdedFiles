.class Lcom/android/systemui/statusbar/policy/CallbackHandler$8;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSimIcon(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$simIconId:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$visible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$simIconId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get1(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

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

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$visible:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$8;->val$simIconId:I

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSimIcon(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method
