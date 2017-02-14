.class final Lcom/android/settings/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$ServiceHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/DockService;->-wrap2(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V

    return-void
.end method
