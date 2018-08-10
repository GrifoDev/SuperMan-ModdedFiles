.class Lcom/android/systemui/statusbar/phone/SignalDrawable$1;
.super Ljava/lang/Object;
.source "SignalDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SignalDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->-get1(Lcom/android/systemui/statusbar/phone/SignalDrawable;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->-set0(Lcom/android/systemui/statusbar/phone/SignalDrawable;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->-set0(Lcom/android/systemui/statusbar/phone/SignalDrawable;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->-get2(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;->this$0:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->-get0(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
