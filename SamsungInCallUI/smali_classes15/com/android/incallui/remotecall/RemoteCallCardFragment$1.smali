.class Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;
.super Ljava/lang/Object;
.source "RemoteCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/remotecall/RemoteCallCardFragment;->initMenuBtn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/RemoteCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/RemoteCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallCardFragment$1;->this$0:Lcom/android/incallui/remotecall/RemoteCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallCardFragment;->getPresenter()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->launchDialer()V

    .line 293
    return-void
.end method
