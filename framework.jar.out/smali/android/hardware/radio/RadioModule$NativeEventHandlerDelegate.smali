.class Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/hardware/radio/RadioModule;


# direct methods
.method constructor <init>(Landroid/hardware/radio/RadioModule;Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/hardware/radio/RadioModule;
    .param p2, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 99
    iput-object p1, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;->this$0:Landroid/hardware/radio/RadioModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 110
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    .line 112
    new-instance v1, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0, p2}, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;-><init>(Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/radio/RadioTuner$Callback;)V

    iput-object v1, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 100
    :goto_1
    return-void

    .line 106
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 195
    :cond_1
    iput-object v1, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method


# virtual methods
.method handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
