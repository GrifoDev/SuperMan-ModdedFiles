.class Lcom/samsung/android/privatemode/PrivateModeListener$1;
.super Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
.source "PrivateModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/privatemode/PrivateModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/privatemode/PrivateModeListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/PrivateModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/privatemode/PrivateModeListener$1;->this$0:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/privatemode/PrivateModeListener$1;->this$0:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/privatemode/PrivateModeListener;->onStateChanged(II)V

    return-void
.end method
