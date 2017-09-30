.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iput p2, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$1;->val$id:I

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$000(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V

    return-void
.end method
