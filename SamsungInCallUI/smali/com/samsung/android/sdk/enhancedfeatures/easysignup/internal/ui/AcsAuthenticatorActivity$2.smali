.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->finish()V

    return-void
.end method
