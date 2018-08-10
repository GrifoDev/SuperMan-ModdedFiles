.class Landroid/media/MediaCas$2;
.super Landroid/media/ICasListener$Stub;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method constructor <init>(Landroid/media/MediaCas;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Landroid/media/ICasListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(II[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-get1(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$2;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-get1(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/media/MediaCas$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
