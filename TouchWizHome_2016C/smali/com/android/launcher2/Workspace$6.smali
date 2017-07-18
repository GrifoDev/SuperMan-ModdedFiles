.class Lcom/android/launcher2/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method
