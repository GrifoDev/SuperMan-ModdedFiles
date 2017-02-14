.class Lcom/android/server/PKMService$PKMServiceHandler;
.super Landroid/os/Handler;
.source "PKMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PKMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PKMServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PKMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PKMService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PKMService$PKMServiceHandler;->this$0:Lcom/android/server/PKMService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
