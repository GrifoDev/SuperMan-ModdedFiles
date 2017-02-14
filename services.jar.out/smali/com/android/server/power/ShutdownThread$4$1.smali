.class Lcom/android/server/power/ShutdownThread$4$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$4;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$4;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4$1;->this$1:Lcom/android/server/power/ShutdownThread$4;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$4$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$4$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-wrap4(Landroid/content/Context;)V

    return-void
.end method
