.class Landroid/media/RemoteDisplay$4;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->cbFromNativeWFD(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteDisplay;
    .param p2, "val$msg"    # I
    .param p3, "val$data"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    iput p2, p0, Landroid/media/RemoteDisplay$4;->val$msg:I

    iput-object p3, p0, Landroid/media/RemoteDisplay$4;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Landroid/media/RemoteDisplay;->-get1()Landroid/media/RemoteDisplayCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplay$4;->val$msg:I

    iget-object v2, p0, Landroid/media/RemoteDisplay$4;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteDisplayCallback;->onNoti(ILjava/lang/String;)V

    .line 226
    return-void
.end method
