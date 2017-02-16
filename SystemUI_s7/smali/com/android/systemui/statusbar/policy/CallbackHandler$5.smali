.class Lcom/android/systemui/statusbar/policy/CallbackHandler$5;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNWBoosterIndicators(ZZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIcon:I

.field final synthetic val$dataTypeIcon:I

.field final synthetic val$running:Z

.field final synthetic val$visible:Z

.field final synthetic val$wifiStrengthIcon:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZZIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$visible:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$running:Z

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$dataTypeIcon:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$wifiStrengthIcon:I

    iput p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$activityIcon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$visible:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$running:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$dataTypeIcon:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$wifiStrengthIcon:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$5;->val$activityIcon:I

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
