.class Lcom/android/server/policy/GlobalActions$31;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/GlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$31;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$31;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$31;->val$tempView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/server/policy/GlobalActions$31;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$31;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$31;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$31;->val$tempView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActions$31;->val$isPort:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap13(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method
