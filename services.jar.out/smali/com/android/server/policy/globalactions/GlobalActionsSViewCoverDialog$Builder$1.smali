.class Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;
.super Ljava/lang/Object;
.source "GlobalActionsSViewCoverDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

.field final synthetic val$dialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;->this$1:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;->val$dialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;->this$1:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    invoke-static {v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->-get1(Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder$1;->val$dialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
