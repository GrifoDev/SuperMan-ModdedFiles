.class Lcom/android/settings/applications/ConvertToFbe$1;
.super Ljava/lang/Object;
.source "ConvertToFbe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ConvertToFbe;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ConvertToFbe;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ConvertToFbe;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ConvertToFbe$1;->this$0:Lcom/android/settings/applications/ConvertToFbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ConvertToFbe$1;->this$0:Lcom/android/settings/applications/ConvertToFbe;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/applications/ConvertToFbe;->-wrap0(Lcom/android/settings/applications/ConvertToFbe;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ConvertToFbe$1;->this$0:Lcom/android/settings/applications/ConvertToFbe;

    invoke-static {v0}, Lcom/android/settings/applications/ConvertToFbe;->-wrap1(Lcom/android/settings/applications/ConvertToFbe;)V

    :cond_0
    return-void
.end method
