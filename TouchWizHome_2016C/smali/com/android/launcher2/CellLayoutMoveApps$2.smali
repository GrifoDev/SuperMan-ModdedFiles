.class Lcom/android/launcher2/CellLayoutMoveApps$2;
.super Ljava/lang/Object;
.source "CellLayoutMoveApps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutMoveApps;->removeItem(Lcom/android/launcher2/BaseItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutMoveApps;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutMoveApps;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMoveApps$2;->this$0:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMoveApps$2;->this$0:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutMoveApps;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v2, 0x1

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    return-void
.end method
