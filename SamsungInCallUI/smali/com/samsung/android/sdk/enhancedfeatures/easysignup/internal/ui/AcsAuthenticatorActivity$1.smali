.class Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->validateActivity()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/AcsAuthenticatorActivity;)V

    goto :goto_0
.end method
