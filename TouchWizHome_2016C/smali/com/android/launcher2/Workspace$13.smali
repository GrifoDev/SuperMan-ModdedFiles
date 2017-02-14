.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Thread;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field final synthetic val$widgetItem:Lcom/android/launcher2/HomeWidgetItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$13;->val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$13;->val$widgetItem:Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$13;->val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$13;->val$widgetItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v1, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method
