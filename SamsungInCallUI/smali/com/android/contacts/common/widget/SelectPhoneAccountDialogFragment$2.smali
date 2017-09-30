.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v0, p2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->b(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z

    return-void
.end method
