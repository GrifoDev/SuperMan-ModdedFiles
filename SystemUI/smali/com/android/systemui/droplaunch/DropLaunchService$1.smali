.class Lcom/android/systemui/droplaunch/DropLaunchService$1;
.super Ljava/lang/Object;
.source "DropLaunchService.java"

# interfaces
.implements Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/droplaunch/DropLaunchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/droplaunch/DropLaunchService;


# direct methods
.method constructor <init>(Lcom/android/systemui/droplaunch/DropLaunchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/droplaunch/DropLaunchService$1;->this$0:Lcom/android/systemui/droplaunch/DropLaunchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishService()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;-><init>(Lcom/android/systemui/droplaunch/DropLaunchService$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
