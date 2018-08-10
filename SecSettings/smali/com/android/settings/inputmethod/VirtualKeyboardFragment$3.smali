.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->-wrap1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
