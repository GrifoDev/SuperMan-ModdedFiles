.class Landroid/app/ExitTransitionCoordinator$5;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Landroid/app/Activity$TranslucentConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslucentConversionComplete(Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get1(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap2(Landroid/app/ExitTransitionCoordinator;)V

    :cond_0
    return-void
.end method
