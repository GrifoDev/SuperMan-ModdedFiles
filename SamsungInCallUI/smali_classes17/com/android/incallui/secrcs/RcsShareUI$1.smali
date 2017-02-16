.class Lcom/android/incallui/secrcs/RcsShareUI$1;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/secrcs/RcsInvitation;Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/secrcs/RcsShareUI;

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$1;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 1606
    packed-switch p2, :pswitch_data_0

    .line 1615
    :goto_0
    return-void

    .line 1608
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$1;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z
    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1902(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    goto :goto_0

    .line 1612
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$1;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/secrcs/RcsShareUI;->mTwoWayShare:Z
    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1902(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    goto :goto_0

    .line 1606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
