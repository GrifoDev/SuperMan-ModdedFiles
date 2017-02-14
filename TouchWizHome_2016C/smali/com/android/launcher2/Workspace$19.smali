.class Lcom/android/launcher2/Workspace$19;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field final synthetic val$co:Lcom/android/launcher2/Workspace$CellOrient;

.field final synthetic val$r:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$19;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$19;->val$r:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$19;->val$cl:Lcom/android/launcher2/CellLayout;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$19;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher2/Workspace$19;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$19;->val$r:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$19;->val$cl:Lcom/android/launcher2/CellLayout;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$19;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    const/4 v4, 0x0

    # invokes: Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->access$2300(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    return-void
.end method
