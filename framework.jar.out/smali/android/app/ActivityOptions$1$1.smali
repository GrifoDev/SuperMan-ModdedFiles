.class Landroid/app/ActivityOptions$1$1;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions$1;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityOptions$1;

.field final synthetic val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions$1;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityOptions$1$1;->this$1:Landroid/app/ActivityOptions$1;

    iput-object p2, p0, Landroid/app/ActivityOptions$1$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityOptions$1$1;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted()V

    return-void
.end method
