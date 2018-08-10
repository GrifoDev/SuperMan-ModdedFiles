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

    iput-object p1, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    iput p2, p0, Landroid/media/RemoteDisplay$4;->val$msg:I

    iput-object p3, p0, Landroid/media/RemoteDisplay$4;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->-get1(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$NativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->-get1(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$NativeListener;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplay$4;->val$msg:I

    iget-object v2, p0, Landroid/media/RemoteDisplay$4;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/media/RemoteDisplay$NativeListener;->onNotify(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
