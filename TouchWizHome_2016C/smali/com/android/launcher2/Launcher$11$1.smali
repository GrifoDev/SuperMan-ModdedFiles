.class Lcom/android/launcher2/Launcher$11$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$11;

.field final synthetic val$context2:Landroid/content/Context;

.field final synthetic val$intent2:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$11;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$11$1;->this$1:Lcom/android/launcher2/Launcher$11;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$11$1;->val$context2:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$11$1;->val$intent2:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Launcher$11$1;->this$1:Lcom/android/launcher2/Launcher$11;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$11$1;->val$context2:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$11$1;->val$intent2:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
