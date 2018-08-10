.class Lcom/android/systemui/globalactions/GlobalActionsDialog$4;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap20(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set18(Z)Z

    return-void
.end method
