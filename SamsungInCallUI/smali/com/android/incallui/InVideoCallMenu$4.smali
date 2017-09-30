.class Lcom/android/incallui/InVideoCallMenu$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$4;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$4;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$400(Lcom/android/incallui/InVideoCallMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->requestPickImageToGallery()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->selectVideoFromMyFiles()V

    goto :goto_0
.end method
