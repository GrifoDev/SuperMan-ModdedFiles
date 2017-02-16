.class Lcom/android/incallui/operator/usa/InCallUIExtensionManager$2;
.super Ljava/lang/Object;
.source "InCallUIExtensionManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$2;->this$0:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
