.class Lcom/android/lg/rambar/CircleRamView$1;
.super Ljava/lang/Object;
.source "CircleRamView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lg/rambar/CircleRamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lg/rambar/CircleRamView;


# direct methods
.method constructor <init>(Lcom/android/lg/rambar/CircleRamView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/lg/rambar/CircleRamView$1;->this$0:Lcom/android/lg/rambar/CircleRamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView$1;->this$0:Lcom/android/lg/rambar/CircleRamView;

    invoke-static {v0}, Lcom/android/lg/rambar/CircleRamView;->access$0(Lcom/android/lg/rambar/CircleRamView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView$1;->this$0:Lcom/android/lg/rambar/CircleRamView;

    invoke-static {v0}, Lcom/android/lg/rambar/CircleRamView;->access$1(Lcom/android/lg/rambar/CircleRamView;)V

    :cond_0
    return-void
.end method
