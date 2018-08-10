.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;
.super Landroid/os/Handler;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap8(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)V

    return-void
.end method
