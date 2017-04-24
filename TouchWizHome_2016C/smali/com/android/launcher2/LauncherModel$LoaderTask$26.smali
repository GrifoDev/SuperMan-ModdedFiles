.class Lcom/android/launcher2/LauncherModel$LoaderTask$26;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppLoader$BindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$26;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$26;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    # getter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$1700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$26;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$1800(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    :cond_0
    return-void
.end method
