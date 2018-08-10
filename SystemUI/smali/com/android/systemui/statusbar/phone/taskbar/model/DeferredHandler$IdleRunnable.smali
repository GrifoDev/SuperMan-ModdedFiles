.class Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
