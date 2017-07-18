.class Lcom/android/lg/rambar/CircleRamView$2;
.super Ljava/lang/Object;
.source "CircleRamView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lg/rambar/CircleRamView;->update()V
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

    iput-object p1, p0, Lcom/android/lg/rambar/CircleRamView$2;->this$0:Lcom/android/lg/rambar/CircleRamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView$2;->this$0:Lcom/android/lg/rambar/CircleRamView;

    invoke-static {v0}, Lcom/android/lg/rambar/CircleRamView;->access$2(Lcom/android/lg/rambar/CircleRamView;)V

    iget-object v0, p0, Lcom/android/lg/rambar/CircleRamView$2;->this$0:Lcom/android/lg/rambar/CircleRamView;

    invoke-virtual {v0}, Lcom/android/lg/rambar/CircleRamView;->invalidate()V

    return-void
.end method
