.class final Lcom/samsung/android/privatemode/SemPrivateModeManager$1;
.super Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
.source "SemPrivateModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/SemPrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Lcom/samsung/android/privatemode/SemPrivateModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager$1;->val$listener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

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

    iget-object v0, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager$1;->val$listener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;->onStateChanged(II)V

    return-void
.end method
