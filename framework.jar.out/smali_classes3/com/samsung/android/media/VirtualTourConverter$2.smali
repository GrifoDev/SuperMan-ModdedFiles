.class Lcom/samsung/android/media/VirtualTourConverter$2;
.super Landroid/os/Handler;
.source "VirtualTourConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/VirtualTourConverter;->startWithNewLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/VirtualTourConverter;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/VirtualTourConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/VirtualTourConverter$2;->this$0:Lcom/samsung/android/media/VirtualTourConverter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/VirtualTourConverter$2;->this$0:Lcom/samsung/android/media/VirtualTourConverter;

    invoke-static {v0}, Lcom/samsung/android/media/VirtualTourConverter;->-wrap1(Lcom/samsung/android/media/VirtualTourConverter;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
