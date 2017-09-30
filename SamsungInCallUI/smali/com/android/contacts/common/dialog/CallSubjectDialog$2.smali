.class Lcom/android/contacts/common/dialog/CallSubjectDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/dialog/CallSubjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/dialog/CallSubjectDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;->a:Lcom/android/contacts/common/dialog/CallSubjectDialog;

    invoke-virtual {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->finish()V

    return-void
.end method
