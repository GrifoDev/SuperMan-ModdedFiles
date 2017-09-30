.class Lcom/android/incallui/fragment/VideoCallCardBaseFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->showMergeNotAllowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallCardBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallCardBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallCardBaseFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallCardBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
