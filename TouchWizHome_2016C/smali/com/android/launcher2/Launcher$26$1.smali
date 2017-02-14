.class Lcom/android/launcher2/Launcher$26$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$26;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$26;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$26;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$26$1;->this$1:Lcom/android/launcher2/Launcher$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Launcher$26$1;->this$1:Lcom/android/launcher2/Launcher$26;

    iget-object v0, v0, Lcom/android/launcher2/Launcher$26;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->saveHomeZeroPageScreenshots()V

    return-void
.end method
