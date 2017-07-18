.class Lcom/android/incallui/secrcs/RcsShareUI$3;
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

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$3;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$3;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2502(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$3;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2502(Lcom/android/incallui/secrcs/RcsShareUI;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
