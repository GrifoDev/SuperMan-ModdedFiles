.class Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;
.super Ljava/lang/Object;
.source "DonutGraphEffect.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLineCallbackListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;->this$0:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineFinished()V
    .locals 2

    const-string/jumbo v0, "secVisualEffect_Donut"

    const-string/jumbo v1, "Callback at DonutGraphEffect"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;->this$0:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->-wrap0(Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;)V

    return-void
.end method
