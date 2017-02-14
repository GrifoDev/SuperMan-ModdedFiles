.class Lcom/android/launcher2/DragState$3;
.super Ljava/lang/Thread;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragState;->onDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragState;

.field final synthetic val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState$3;->this$0:Lcom/android/launcher2/DragState;

    iput-object p3, p0, Lcom/android/launcher2/DragState$3;->val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iput p4, p0, Lcom/android/launcher2/DragState$3;->val$appWidgetId:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState$3;->val$appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget v1, p0, Lcom/android/launcher2/DragState$3;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method
