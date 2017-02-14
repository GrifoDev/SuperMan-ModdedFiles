.class Lcom/android/server/cover/CoverManagerService$6;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$6;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$6;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->-set0(Lcom/android/server/cover/CoverManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$6;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/cover/CoverManagerService;->notifyCoverAttachStateChanged(JZ)V

    return-void
.end method
